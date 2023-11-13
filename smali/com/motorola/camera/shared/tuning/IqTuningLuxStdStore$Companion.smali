.class public final Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore$Companion;
.super Ljava/lang/Object;
.source "IqTuningLuxStdStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIqTuningLuxStdStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IqTuningLuxStdStore.kt\ncom/motorola/camera/shared/tuning/IqTuningLuxStdStore$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,57:1\n1#2:58\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromJson(Lorg/json/JSONObject;)Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;
    .locals 9

    .line 1
    new-instance p0, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    .line 2
    invoke-direct {p0}, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;-><init>()V

    const-string v0, "lux-idx-to-std-params"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "sensor-name"

    .line 7
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aCoefficient"

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "bCoefficient"

    .line 9
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;->mLuxIdxToStdCoefficients:Ljava/util/HashMap;

    const-string/jumbo v8, "sensorName"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v8, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;

    double-to-float v4, v4

    double-to-float v5, v6

    invoke-direct {v8, v4, v5}, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;-><init>(FF)V

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing KEY_LUX_IDX_TO_STD_COEFFICIENTS array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IqTuningLuxStdStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method
