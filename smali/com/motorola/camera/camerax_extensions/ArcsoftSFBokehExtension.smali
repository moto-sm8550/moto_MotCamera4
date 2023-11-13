.class public final Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;
.super Ljava/lang/Object;
.source "ArcsoftSFBokehExtension.kt"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArcsoftSFBokehExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArcsoftSFBokehExtension.kt\ncom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension\n+ 2 JsonUtils.kt\ncom/motorola/camera/camerax_extensions/JsonUtils\n*L\n1#1,392:1\n134#2,10:393\n134#2,10:403\n*S KotlinDebug\n*F\n+ 1 ArcsoftSFBokehExtension.kt\ncom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension\n*L\n213#1:393,10\n309#1:403,10\n*E\n"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfigCapture:Lorg/json/JSONObject;

.field public algoConfigPreview:Lorg/json/JSONObject;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public jniClientIdCapture:J

.field public jniClientIdPreview:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public largestFace:Landroid/graphics/Rect;

.field public final mSensorName:Ljava/lang/String;

.field public final maxInputFrameCount:I

.field public previewSize:Landroid/graphics/Point;

.field public final prvsLuxVals:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public size:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonConfig:Lorg/json/JSONObject;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 4
    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->mSensorName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->maxInputFrameCount:I

    .line 6
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->previewSize:Landroid/graphics/Point;

    .line 7
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    .line 8
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->prvsLuxVals:Ljava/util/LinkedList;

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final buildRequest(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 6
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [I

    .line 8
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v3, "EDGE_MODE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 10
    invoke-virtual {v1, v0, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 11
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "NOISE_REDUCTION_MODE"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 12
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v3, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 14
    invoke-virtual {v1, v0, v2, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p0, "requests"

    .line 16
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 9

    .line 1
    invoke-virtual {p0, p2}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->getJniClient(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    const-string p1, "client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->previewSize:Landroid/graphics/Point;

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    move v5, p2

    move v6, v2

    goto :goto_0

    :cond_2
    move v5, v2

    move v6, v5

    .line 6
    :goto_0
    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2, v2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v7

    .line 7
    new-instance p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {p2, v2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    .line 8
    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    .line 9
    sget-boolean v8, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    .line 10
    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->maxInputFrameCount:I

    move-object v4, p1

    .line 12
    invoke-static/range {v0 .. v8}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->configureCaptureStreamNative(JLandroid/graphics/Point;ILandroid/view/Surface;IZIZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public final deinitialize(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->getJniClient(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    .line 3
    invoke-static {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->deinitializeNative(J)Z

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdCapture:J

    goto :goto_0

    .line 5
    :cond_2
    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdPreview:J

    :goto_0
    return-void
.end method

.method public final getExtensionConfig()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "previewResultCount"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "previewProcessorType"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 6
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 7
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, [I

    .line 9
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 10
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 11
    sget-object v5, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 13
    invoke-virtual {v5, v4, v6, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "requests"

    .line 15
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "previewCaptureRequests"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 18
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "LUX_STD_KEY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v1, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 19
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "LUX_IDX_KEY"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 20
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "STATISTICS_FACES"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Face["

    invoke-virtual {v5, v1, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 21
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v6, "SCALER_CROP_REGION"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "Rect"

    invoke-virtual {v5, v1, v2, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string v2, "previewResultsOfInterest"

    .line 22
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 24
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 25
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string v2, "captureResultsOfInterest"

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->maxInputFrameCount:I

    const-string v2, "captureRequestCount"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    const-string v3, "resolution"

    invoke-virtual {v5, v3, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 31
    invoke-virtual {v5, v2, v1, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getLimitedStreamSizeArray(IILandroid/hardware/camera2/CameraCharacteristics;)Lorg/json/JSONArray;

    move-result-object p0

    const-string v1, "previewSupportedResolutions"

    .line 32
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "json.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string p0, "algoConfigPreview"

    .line 34
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getFaceData(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "SCALER_CROP_REGION.name"

    const/4 v3, -0x1

    .line 2
    invoke-static {v1, v2, v0, p1, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroid/graphics/Rect;

    .line 5
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "STATISTICS_FACES.name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v0, v4, p1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    const/4 v3, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v6, v3

    :goto_0
    if-ge v6, v4, :cond_3

    .line 9
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 10
    instance-of v8, v7, Lorg/json/JSONObject;

    if-eqz v8, :cond_2

    check-cast v7, Lorg/json/JSONObject;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    new-instance p1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p1, v3, v3, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    invoke-virtual {v0, v5, v2, v1, p1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getScaledFaceRects(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p1

    .line 13
    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    xor-int/2addr v0, v1

    const-string v1, "height"

    const-string/jumbo v2, "width"

    const-string/jumbo v4, "top"

    const-string v5, "left"

    if-eqz v0, :cond_7

    .line 14
    array-length v0, p1

    :goto_3
    if-ge v3, v0, :cond_6

    aget-object v6, p1, v3

    .line 15
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/2addr v8, v7

    iget-object v7, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v9, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    mul-int/2addr v9, v7

    if-le v8, v9, :cond_5

    .line 16
    iput-object v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    .line 17
    :cond_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 18
    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v6

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    iget-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    invoke-virtual {p3, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    invoke-virtual {p3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual {p3, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {p3, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {p3, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p3, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_4
    return-void
.end method

.method public final getJniClient(I)J
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    const-string p1, "Unknown stream type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0

    .line 2
    :cond_0
    iget-wide p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdCapture:J

    return-wide p0

    .line 3
    :cond_1
    iget-wide p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdPreview:J

    return-wide p0
.end method

.method public final initialize(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    const-string p1, "Unknown stream type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2
    :cond_0
    iget-wide v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdCapture:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->deinitialize(I)V

    .line 3
    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    const-string p1, "as-bokeh-capture"

    .line 4
    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v4

    .line 5
    iput-wide v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdCapture:J

    cmp-long p0, v4, v2

    if-nez p0, :cond_4

    return v1

    .line 6
    :cond_2
    iget-wide v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdPreview:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->deinitialize(I)V

    .line 7
    :cond_3
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    const-string p1, "as-bokeh-preview"

    .line 8
    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v4

    .line 9
    iput-wide v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdPreview:J

    cmp-long p0, v4, v2

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final isSupported()Z
    .locals 12

    .line 1
    iget v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string v4, "arcsoft-sfbokeh-preview"

    .line 3
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "Config missing for algo"

    if-eqz v3, :cond_8

    .line 5
    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    .line 6
    iget v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    const-string v6, "enable"

    invoke-virtual {v0, v6, v3, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 7
    iget-object v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigCapture:Lorg/json/JSONObject;

    const/4 v7, 0x0

    const-string v8, "algoConfigCapture"

    if-eqz v5, :cond_7

    .line 8
    iget v9, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    const-string v10, "extension-enable"

    .line 9
    invoke-virtual {v0, v10, v5, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 10
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string v11, "arcsoft-sfbokeh-capture"

    .line 12
    invoke-virtual {v0, v11, v5, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 14
    iput-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigCapture:Lorg/json/JSONObject;

    .line 15
    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    invoke-virtual {v0, v6, v1, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 16
    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigCapture:Lorg/json/JSONObject;

    if-eqz v4, :cond_4

    .line 17
    iget p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    .line 18
    invoke-virtual {v0, v10, v4, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 19
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v2

    .line 20
    :cond_4
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 21
    :cond_5
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return v2

    .line 22
    :cond_7
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 23
    :cond_8
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final processStream(Ljava/lang/String;I)Z
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    invoke-virtual {v0, v1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->getJniClient(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 2
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    const-string v1, "client id is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 3
    :cond_0
    sget-object v4, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 4
    new-instance v6, Lorg/json/JSONTokener;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string v7, "results"

    const/4 v8, -0x1

    .line 5
    invoke-virtual {v4, v7, v6, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    .line 6
    check-cast v6, Lorg/json/JSONArray;

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    check-cast v7, Lorg/json/JSONObject;

    if-eqz v7, :cond_1d

    if-nez v6, :cond_2

    goto/16 :goto_10

    :cond_2
    if-nez v1, :cond_3

    const/4 v5, 0x1

    .line 8
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v8, ""

    const-string v9, "focus"

    const-string v10, "SCALER_CROP_REGION.name"

    const-string v11, "lib-name"

    const-string v12, "libName"

    const-string v13, "largestFace"

    const-string v14, "faces"

    const-string v15, "orientation"

    move-object/from16 p1, v8

    const-string v8, "intensity"

    move-wide/from16 v16, v2

    const-string v2, "height"

    const-string/jumbo v3, "width"

    move-object/from16 p2, v12

    const-string/jumbo v12, "top"

    move-object/from16 v18, v11

    const-string v11, "left"

    const-string v19, "algoConfigPreview"

    if-eqz v5, :cond_17

    move/from16 v20, v5

    const-string v5, "enable"

    move-object/from16 v21, v9

    const/4 v9, 0x1

    .line 9
    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v5, :cond_16

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    move-object/from16 v22, v2

    const-string v2, "bokeh-blur-level-mapping"

    .line 11
    invoke-virtual {v4, v2, v5, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    const-wide v23, 0x3fe999999999999aL    # 0.8

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_5
    invoke-virtual {v1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v2, :cond_15

    iget v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    const-string v8, "low-light-lux"

    invoke-virtual {v4, v8, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    const-string v5, "lowLuxThres"

    .line 14
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v2, :cond_14

    .line 16
    iget v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    const-string v8, "face-too-far-percentage"

    .line 17
    invoke-virtual {v4, v8, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    const-string v5, "faceDistThres"

    .line 18
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v2, :cond_13

    .line 20
    iget v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    const-string/jumbo v8, "skipped-frame-number"

    .line 21
    invoke-virtual {v4, v8, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string/jumbo v4, "skipFrameNumber"

    .line 22
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F

    move-result v2

    .line 24
    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->prvsLuxVals:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_6

    .line 25
    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->prvsLuxVals:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 26
    :cond_6
    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->prvsLuxVals:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->prvsLuxVals:Ljava/util/LinkedList;

    const-string v4, "<this>"

    .line 28
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    add-float/2addr v4, v8

    goto :goto_2

    :cond_7
    int-to-float v2, v5

    div-float/2addr v4, v2

    .line 30
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "curAverageLux"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    sget-object v2, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v5, -0x1

    .line 32
    invoke-static {v4, v10, v2, v7, v5}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_8

    move-object/from16 v8, p1

    goto :goto_3

    :cond_8
    move-object v8, v4

    :goto_3
    invoke-virtual {v2, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v4

    .line 34
    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v8, "mfacingCode"

    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x0

    .line 35
    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v5, 0x1

    .line 36
    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    :goto_5
    sget v5, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 38
    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 39
    iget-object v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/4 v10, 0x0

    .line 40
    invoke-static {v5, v8, v9, v10}, Lcom/motorola/camera/shared/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v5

    .line 41
    invoke-virtual {v1, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Landroid/graphics/Rect;

    .line 43
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "STATISTICS_FACES.name"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, -0x1

    .line 45
    invoke-virtual {v2, v8, v7, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    if-nez v8, :cond_b

    goto :goto_7

    .line 46
    :cond_b
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v10, :cond_d

    move/from16 p1, v10

    .line 47
    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v23, v8

    .line 48
    instance-of v8, v10, Lorg/json/JSONObject;

    if-eqz v8, :cond_c

    check-cast v10, Lorg/json/JSONObject;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, p1

    move-object/from16 v8, v23

    goto :goto_6

    .line 49
    :cond_d
    :goto_7
    new-instance v8, Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->previewSize:Landroid/graphics/Point;

    iget v15, v10, Landroid/graphics/Point;->x:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    move-object/from16 v23, v3

    const/4 v3, 0x0

    invoke-direct {v8, v3, v3, v15, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    invoke-virtual {v2, v9, v5, v4, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getScaledFaceRects(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object v2

    .line 51
    array-length v3, v2

    if-nez v3, :cond_e

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_8
    xor-int/lit8 v4, v4, 0x1

    const-string v5, "faceBottom"

    const-string v8, "faceRight"

    const-string v9, "faceTop"

    const-string v10, "faceLeft"

    const-string v15, "motFaceDetected"

    if-eqz v4, :cond_f

    .line 52
    invoke-virtual {v1, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v3, 0x0

    .line 53
    aget-object v4, v2, v3

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    aget-object v4, v2, v3

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    aget-object v4, v2, v3

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v1, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {v1, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    :goto_9
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 63
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 64
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_10

    .line 65
    invoke-virtual {v0, v7, v2, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->getFaceData(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 66
    :cond_10
    invoke-virtual {v1, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v1, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 69
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v4, v23

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v5, v22

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v3, v21

    .line 73
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    sget-object v2, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v3, :cond_12

    .line 75
    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    move-object/from16 v9, v18

    .line 76
    invoke-virtual {v2, v9, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v3, :cond_11

    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    const-string v5, "model-mode"

    invoke-virtual {v2, v5, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "modelMode"

    .line 78
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_f

    .line 79
    :cond_11
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_12
    const/4 v0, 0x0

    .line 80
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v0, 0x0

    .line 81
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/4 v0, 0x0

    .line 82
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    .line 83
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_16
    const/4 v0, 0x0

    .line 84
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object v4, v3

    move/from16 v20, v5

    move-object/from16 v21, v9

    move-object/from16 v9, v18

    move-object v5, v2

    move-object/from16 v2, p2

    const-string v3, "enabled"

    move-object/from16 v22, v5

    const/4 v5, 0x1

    .line 85
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/16 v3, 0x50

    .line 86
    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "generate-depthmap"

    const/4 v5, 0x0

    .line 87
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "rotate-depthmap"

    .line 88
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "generateDepthMap"

    .line 89
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "rotateDepthMap"

    .line 90
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 91
    sget v3, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 92
    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 93
    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v23, v4

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v8, 0x0

    .line 94
    invoke-static {v3, v5, v4, v8}, Lcom/motorola/camera/shared/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v3

    .line 95
    invoke-virtual {v1, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 97
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 98
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_18

    .line 99
    invoke-virtual {v0, v7, v3, v4}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->getFaceData(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 100
    :cond_18
    invoke-virtual {v1, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {v1, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string v4, "facingCode"

    if-nez v3, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1a

    const/4 v3, 0x0

    .line 103
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v3, 0x1

    goto :goto_d

    :cond_1a
    :goto_c
    const/4 v3, 0x1

    .line 104
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    :goto_d
    sget-object v4, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v5, :cond_1c

    .line 106
    iget v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    .line 107
    invoke-virtual {v4, v9, v5, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "focusType"

    .line 108
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, -0x1

    .line 110
    invoke-static {v2, v10, v4, v7, v3}, Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline0;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    .line 111
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1b

    move-object/from16 v8, p1

    goto :goto_e

    :cond_1b
    move-object v8, v2

    :goto_e
    invoke-virtual {v4, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    .line 112
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 113
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v5, v23

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v4, v22

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "jpegCrop"

    .line 117
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 119
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v3, v21

    .line 123
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :goto_f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "in-params"

    .line 125
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "json.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v2, v20, 0x1

    .line 127
    iget v0, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->maxInputFrameCount:I

    move-wide/from16 v3, v16

    .line 128
    invoke-static {v3, v4, v1, v2, v0}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result v0

    return v0

    .line 129
    :cond_1c
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 130
    :cond_1d
    :goto_10
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    const-string v1, "Unable to parse input results"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
