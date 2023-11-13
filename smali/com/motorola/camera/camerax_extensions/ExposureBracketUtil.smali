.class public final Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;
.super Ljava/lang/Object;
.source "ExposureBracketUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;
    }
.end annotation


# direct methods
.method public static final calcExposureAtEv$enumunboxing$(Ljava/util/ArrayList;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;DILcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    const-string v5, "abMode"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    move-wide/from16 v7, p3

    .line 1
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 2
    iget-wide v7, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 3
    iget-wide v9, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v7, v9

    .line 4
    iget-wide v9, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v7, v9

    mul-double/2addr v7, v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v5, 0x0

    cmpg-double v5, v7, v5

    const/4 v6, 0x0

    if-gtz v5, :cond_0

    .line 6
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 7
    iget-wide v9, v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 9
    iget-wide v5, v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 10
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 11
    iget-wide v9, v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 12
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 13
    iget-wide v11, v11, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    const/4 v13, 0x1

    :goto_0
    if-nez v6, :cond_3

    if-ge v13, v1, :cond_3

    .line 14
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 15
    iget-wide v14, v14, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 16
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 p3, v9

    move-object/from16 v9, v16

    check-cast v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 17
    iget-wide v9, v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v14, v9

    cmpg-double v9, v7, v14

    if-gtz v9, :cond_2

    add-int/lit8 v6, v13, -0x1

    .line 18
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 19
    iget-wide v9, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 20
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 21
    iget-wide v11, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 22
    invoke-static {v9, v10, v11, v12}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->equalEnough(DD)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 23
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 24
    iget-wide v9, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v11, v7, v9

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 26
    iget-wide v9, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    div-double v11, v7, v9

    move-wide/from16 v19, v9

    move-wide v9, v11

    move-wide/from16 v11, v19

    :goto_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move-wide/from16 v9, p3

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move-wide/from16 p3, v9

    if-nez v6, :cond_4

    .line 27
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 28
    iget-wide v9, v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v5, v7, v9

    goto :goto_3

    :cond_4
    move-wide/from16 v9, p3

    move-wide v5, v11

    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 30
    iget-wide v0, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 31
    iget-wide v11, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 32
    iget-wide v13, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v11, v13

    cmpl-double v13, v0, v11

    if-lez v13, :cond_5

    move-wide v0, v11

    :cond_5
    cmpl-double v13, v9, v11

    if-lez v13, :cond_6

    div-double v5, v7, v11

    move-wide v9, v11

    :cond_6
    const/4 v13, 0x1

    if-eq v3, v13, :cond_a

    const/4 v13, 0x2

    if-ne v3, v13, :cond_7

    const-wide v13, 0x416312d000000000L    # 1.0E7

    goto :goto_4

    :cond_7
    const-wide v13, 0x415fca0555555555L    # 8333333.333333333

    :goto_4
    cmpl-double v3, v5, v13

    if-lez v3, :cond_a

    div-double/2addr v5, v13

    .line 33
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double/2addr v5, v13

    const-wide v9, 0x40b3880000000000L    # 5000.0

    sub-double v15, v5, v9

    cmpl-double v3, v15, v7

    if-lez v3, :cond_8

    sub-double/2addr v5, v13

    goto :goto_5

    :cond_8
    add-double/2addr v9, v5

    mul-double/2addr v9, v0

    cmpg-double v0, v9, v7

    if-gez v0, :cond_9

    add-double/2addr v5, v13

    :cond_9
    :goto_5
    div-double v9, v7, v5

    .line 34
    :cond_a
    iget-wide v0, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v3, v9, v0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_c

    cmpg-double v3, v9, v11

    if-gtz v3, :cond_b

    div-double/2addr v9, v0

    goto :goto_6

    .line 35
    :cond_b
    iget-wide v9, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double v5, v0, v9

    div-double v5, v7, v5

    :goto_6
    move-wide v15, v9

    move-wide v9, v0

    goto :goto_7

    :cond_c
    move-wide v15, v13

    :goto_7
    cmpg-double v3, v9, v13

    if-gez v3, :cond_d

    goto :goto_8

    :cond_d
    move-wide v13, v9

    .line 36
    :goto_8
    iget-wide v9, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    cmpl-double v3, v5, v9

    if-lez v3, :cond_f

    mul-double v17, v13, v15

    cmpg-double v3, v17, v11

    if-gez v3, :cond_f

    div-double/2addr v7, v9

    cmpl-double v3, v7, v11

    if-lez v3, :cond_e

    .line 37
    iget-wide v2, v2, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    move-wide v15, v2

    goto :goto_9

    :cond_e
    div-double/2addr v7, v0

    move-wide v15, v7

    :goto_9
    move-wide v5, v9

    goto :goto_a

    :cond_f
    move-wide v0, v13

    :goto_a
    move-wide v2, v15

    .line 38
    iput-wide v0, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 39
    iput-wide v2, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    .line 40
    iput-wide v5, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    return-void
.end method

.method public static final constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "CONTROL_AE_MODE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 5
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v3, "EDGE_MODE"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v3, "NOISE_REDUCTION_MODE"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 9
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "CONTROL_AE_LOCK"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 12
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "SENSOR_SENSITIVITY"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide v2, p1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    float-to-double v4, p2

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int p2, v2

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 15
    invoke-virtual {v0, p0, v1, p2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "CONTROL_POST_RAW_SENSITIVITY_BOOST"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-wide v1, p1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-int v1, v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 19
    invoke-virtual {v0, p0, p2, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 20
    iget-wide p1, p1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    add-double/2addr p1, v4

    double-to-long p1, p1

    .line 21
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "SENSOR_EXPOSURE_TIME"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 22
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "SENSOR_FRAME_DURATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static final equalEnough(DD)Z
    .locals 0

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f3a36e2eb1c432dL    # 4.0E-4

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getAntibandingStrategy$enumunboxing$(Lorg/json/JSONObject;)I
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "CONTROL_AE_ANTIBANDING_MODE.name"

    const/4 v3, -0x1

    .line 2
    invoke-static {v1, v2, v0, p0, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Integer;

    .line 4
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "STATISTICS_SCENE_FLICKER.name"

    .line 5
    invoke-static {v2, v4, v0, p0, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Integer;

    .line 7
    sget-object v4, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "ANTIBANDING_SUBMODE_KEY.name"

    .line 8
    invoke-static {v4, v5, v0, p0, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-byte p0, p0

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-nez v1, :cond_1

    goto :goto_5

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_8

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_3

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_a

    goto :goto_4

    :cond_4
    :goto_1
    const/4 v1, 0x7

    if-eqz p0, :cond_6

    .line 15
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ltz v2, :cond_6

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 16
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v5

    .line 17
    array-length v5, v5

    if-lt v2, v5, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    aget v1, v1, p0

    :cond_6
    :goto_2
    const/4 p0, 0x5

    if-ne v1, p0, :cond_7

    goto :goto_3

    :cond_7
    const/4 p0, 0x6

    if-ne v1, p0, :cond_a

    goto :goto_4

    .line 20
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_9

    :goto_3
    move v0, v3

    goto :goto_5

    .line 21
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_a

    :goto_4
    move v0, v4

    :cond_a
    :goto_5
    return v0
.end method

.method public static final getCurrentGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)D
    .locals 5

    const-string v0, "characteristics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getUnitGainISO(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p1

    .line 2
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "SENSOR_SENSITIVITY.name"

    const/4 v3, -0x1

    .line 3
    invoke-static {v1, v2, v0, p0, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Integer;

    .line 5
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "CONTROL_POST_RAW_SENSITIVITY_BOOST.name"

    .line 6
    invoke-static {v2, v4, v0, p0, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v2, p0

    mul-double/2addr v0, v2

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0
.end method

.method public static final getExpValue(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z
    .locals 9

    const-string v0, "characteristics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "SENSOR_SENSITIVITY.name"

    const/4 v3, -0x1

    .line 2
    invoke-static {v1, v2, v0, p0, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    const-string v4, "ExposureBracketUtil"

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-double v5, v1

    .line 5
    iput-wide v5, p3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 6
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "CONTROL_POST_RAW_SENSITIVITY_BOOST.name"

    .line 7
    invoke-static {v1, v5, v0, p0, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v5, v1

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v5, v7

    .line 10
    iput-wide v5, p3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    .line 11
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "SENSOR_EXPOSURE_TIME.name"

    .line 12
    invoke-static {v1, v5, v0, p0, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    .line 14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    .line 15
    iput-wide v0, p3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    const-wide v0, 0x41adcd6500000000L    # 2.5E8

    .line 16
    iput-wide v0, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    .line 17
    iput-wide v0, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 18
    iput-wide v0, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    .line 19
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 20
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Range;

    .line 21
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 22
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    .line 24
    iput-wide v0, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    :cond_0
    if-eqz p0, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    mul-float/2addr p0, p2

    float-to-double p2, p0

    .line 26
    iput-wide p2, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    :cond_1
    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    mul-double/2addr p0, v7

    .line 28
    iput-wide p0, p4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const-string p0, "exposure time is invalid"

    .line 29
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const-string p0, "isp raw boost is invalid"

    .line 30
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    const-string/jumbo p0, "sensor gain is invalid"

    .line 31
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static final getExpValueHdr(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z
    .locals 2

    const-string v0, "characteristics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getExpValue(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object p1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object p2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string p4, "MOT_ADRC_GAIN_KEY.name"

    const/4 v0, -0x1

    .line 3
    invoke-static {p2, p4, p1, p0, v0}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    iget-wide p1, p3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    .line 5
    :try_start_0
    move-object p4, p0

    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    :goto_0
    mul-double/2addr p1, v0

    .line 7
    iput-wide p1, p3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;
    .locals 6

    const-string v0, "ISO100_GAIN_KEY.name"

    const-string v1, "characteristics"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getUnitGainISO(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    const/4 v2, -0x1

    .line 2
    :try_start_0
    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 3
    sget-object v4, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3, v4, p0, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 6
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 8
    sget-object v4, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 9
    invoke-static {v4, v0, v3, p0, v2}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Double;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-float p0, v2

    .line 11
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "ExposureBracketUtil"

    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->equalEnough(DD)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3c23d70a

    mul-float v1, p1, v0

    const/high16 p1, 0x42c80000    # 100.0f

    .line 14
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    div-float/2addr p1, p0

    goto :goto_1

    :cond_1
    const-string p0, "iso100_gain is zero; using default"

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "Vendor tag iso100_gain not found"

    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_1
    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final getLux(Ljava/lang/String;Lorg/json/JSONObject;)F
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "LUX_IDX_KEY.name"

    const/4 v3, -0x1

    .line 2
    invoke-static {v1, v2, v0, p1, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 4
    :goto_0
    sget-object v4, Lcom/motorola/camera/camerax_extensions/IqConfigManager;->iqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p0, v1}, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;->getLuxStdForIdx(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v2

    :goto_1
    if-nez p0, :cond_2

    .line 5
    sget-object p0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "LUX_STD_KEY.name"

    .line 6
    invoke-static {p0, v1, v0, p1, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 7
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, p0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_3

    .line 9
    :cond_4
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "SENSOR_EXPOSURE_TIME.name"

    .line 10
    invoke-static {p0, v1, v0, p1, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Number;

    .line 12
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "SENSOR_SENSITIVITY.name"

    .line 13
    invoke-static {v1, v2, v0, p1, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Integer;

    .line 15
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "LENS_APERTURE.name"

    .line 16
    invoke-static {v2, v4, v0, p1, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Number;

    if-eqz p0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 18
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "CONTROL_POST_RAW_SENSITIVITY_BOOST.name"

    .line 19
    invoke-static {v4, v5, v0, p1, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    const-wide/16 v3, 0x0

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/high16 p1, 0x40900000    # 4.5f

    .line 23
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float/2addr p1, v0

    const v0, 0x51ba43b7

    .line 24
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v4, p0

    mul-long/2addr v2, v4

    long-to-float p0, v2

    div-float/2addr v0, p0

    mul-float p0, v0, p1

    goto :goto_3

    :cond_7
    const/high16 p0, -0x40800000    # -1.0f

    :goto_3
    return p0
.end method

.method public static final getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {p0, v3}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getLux(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    goto :goto_1

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    :goto_1
    return v1
.end method

.method public static final getUnitGainISO(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/16 p0, 0x40

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3

    const-string v0, "characteristics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_AVAILABLE_CSHOT_MODES_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    new-array v1, v0, [I

    :goto_0
    if-ge p1, v0, :cond_0

    .line 4
    aput v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 6
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_CSHOT_MODE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "MTK_CSHOT_MODE_KEY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p0, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
