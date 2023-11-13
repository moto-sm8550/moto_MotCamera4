.class public final Lcom/motorola/camera/camerax_extensions/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonUtils.kt\ncom/motorola/camera/camerax_extensions/JsonUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,242:1\n37#2:243\n36#2,3:244\n*S KotlinDebug\n*F\n+ 1 JsonUtils.kt\ncom/motorola/camera/camerax_extensions/JsonUtils\n*L\n210#1:243\n210#1:244,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;

    invoke-direct {v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;-><init>()V

    sput-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    const-class v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getJsonClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getJsonClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public final getJson(Landroid/content/Context;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 0

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lcom/motorola/camera/shared/McfUtil;->readTuningMcfConfig(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object p1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    const-string p2, "no json"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p2, "UTF_8"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5
    new-instance p0, Lorg/json/JSONTokener;

    invoke-direct {p0, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    :cond_1
    return-object p0
.end method

.method public final getJsonClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    const-string p0, "c"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    const-string p0, "b"

    return-object p0

    .line 2
    :cond_0
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    const-string p0, "B"

    return-object p0

    .line 3
    :cond_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    const-string p0, "I"

    return-object p0

    .line 4
    :cond_2
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_3

    const-string p0, "L"

    return-object p0

    .line 5
    :cond_3
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_4

    const-string p0, "F"

    return-object p0

    .line 6
    :cond_4
    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_5

    const-string p0, "D"

    return-object p0

    .line 7
    :cond_5
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_6

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 8
    :cond_6
    instance-of p0, p1, [Z

    if-eqz p0, :cond_7

    const-string p0, "b["

    return-object p0

    .line 9
    :cond_7
    instance-of p0, p1, [B

    if-eqz p0, :cond_8

    const-string p0, "B["

    return-object p0

    .line 10
    :cond_8
    instance-of p0, p1, [I

    if-eqz p0, :cond_9

    const-string p0, "I["

    return-object p0

    .line 11
    :cond_9
    instance-of p0, p1, [J

    if-eqz p0, :cond_a

    const-string p0, "L["

    return-object p0

    .line 12
    :cond_a
    instance-of p0, p1, [F

    if-eqz p0, :cond_b

    const-string p0, "F["

    return-object p0

    .line 13
    :cond_b
    instance-of p0, p1, [D

    if-eqz p0, :cond_c

    const-string p0, "D["

    return-object p0

    :cond_c
    const-string p0, "U"

    return-object p0
.end method

.method public final getLimitedStreamSizeArray(IILandroid/hardware/camera2/CameraCharacteristics;)Lorg/json/JSONArray;
    .locals 11

    const-string p0, "characteristics"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz p3, :cond_3

    .line 3
    invoke-virtual {p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v0

    const-string v1, "formats"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    .line 5
    invoke-virtual {p3, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v5

    .line 6
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v7, "supportedSizes"

    .line 7
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v5

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    .line 8
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    if-gt v10, p1, :cond_0

    .line 9
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-gt v10, p2, :cond_0

    .line 10
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "sizes"

    .line 13
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "format"

    .line 14
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final getScaledFaceRects(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")[",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 1
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 4
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    .line 5
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v1, :cond_3

    move-object/from16 v11, p1

    .line 7
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    const-string v13, "rect"

    const/4 v14, -0x1

    move-object/from16 v15, p0

    .line 8
    invoke-virtual {v15, v13, v12, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v12

    .line 9
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 10
    iget v13, v12, Landroid/graphics/Rect;->right:I

    iget v9, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v9

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v1

    iget v1, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v1

    mul-int/2addr v14, v13

    sub-int/2addr v9, v8

    move v1, v10

    int-to-double v9, v9

    mul-double/2addr v9, v4

    .line 11
    invoke-static {v9, v10}, Landroidx/preference/R$color;->roundToInt(D)I

    move-result v9

    iput v9, v12, Landroid/graphics/Rect;->left:I

    .line 12
    iget v9, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v0

    int-to-double v9, v9

    mul-double/2addr v9, v6

    invoke-static {v9, v10}, Landroidx/preference/R$color;->roundToInt(D)I

    move-result v9

    iput v9, v12, Landroid/graphics/Rect;->top:I

    .line 13
    iget v9, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v8

    int-to-double v9, v9

    mul-double/2addr v9, v4

    invoke-static {v9, v10}, Landroidx/preference/R$color;->roundToInt(D)I

    move-result v9

    iput v9, v12, Landroid/graphics/Rect;->right:I

    .line 14
    iget v9, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v0

    int-to-double v9, v9

    mul-double/2addr v9, v6

    invoke-static {v9, v10}, Landroidx/preference/R$color;->roundToInt(D)I

    move-result v9

    iput v9, v12, Landroid/graphics/Rect;->bottom:I

    .line 15
    iget v10, v12, Landroid/graphics/Rect;->left:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    if-lt v10, v13, :cond_2

    iget v10, v12, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    if-lt v10, v13, :cond_2

    .line 16
    iget v10, v12, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    if-gt v10, v13, :cond_2

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    if-le v9, v10, :cond_0

    goto :goto_2

    .line 17
    :cond_0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9, v12}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    :goto_1
    if-eqz v9, :cond_2

    const/4 v10, -0x1

    add-int/2addr v14, v10

    .line 18
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12, v9}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    move/from16 v16, v1

    move v1, v10

    :cond_2
    :goto_2
    add-int/lit8 v10, v1, 0x1

    move/from16 v1, v16

    goto/16 :goto_0

    .line 19
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "list.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/Rect;

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Rect;

    return-object v0
.end method

.method public final parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object p0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    :try_start_1
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    :goto_1
    return-object p0
.end method

.method public final parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final parseRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3

    const-string p0, "Rect\\((\\d+), (\\d+) - (\\d+), (\\d+)\\)"

    .line 1
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v0, "compile(pattern)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "nativePattern.matcher(input)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/text/MatcherMatchResult;

    invoke-direct {v0, p0, p1}, Lkotlin/text/MatcherMatchResult;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    check-cast p1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {p1, v0}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v1}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v1, v2}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x4

    check-cast p0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {p0, v2}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 5
    :try_start_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v2, p1, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 6
    :catch_0
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method
