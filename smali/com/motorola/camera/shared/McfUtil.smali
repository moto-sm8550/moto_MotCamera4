.class public final Lcom/motorola/camera/shared/McfUtil;
.super Ljava/lang/Object;
.source "McfUtil.kt"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/shared/McfUtil;

.field public static REGION:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/shared/McfUtil;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/McfUtil;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/motorola/camera/shared/McfUtil;->REGION:Ljava/lang/String;

    return-void
.end method

.method public static final consolidateJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 8
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 9
    :cond_2
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    .line 10
    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/shared/McfUtil;->consolidateJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1

    :cond_5
    :goto_2
    return-object p0

    :cond_6
    :goto_3
    return-object p1
.end method

.method public static final consolidateJsonForDevice(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "device"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "common-device"

    .line 7
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    instance-of v3, v4, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 9
    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/motorola/camera/shared/McfUtil;->consolidateJsonWithoutOverlay(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    :goto_2
    return-object p0

    :cond_5
    :goto_3
    return-object p1
.end method

.method public static final consolidateJsonWithoutOverlay(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 8
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 9
    :cond_2
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    .line 10
    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/shared/McfUtil;->consolidateJsonWithoutOverlay(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1

    :cond_5
    :goto_2
    return-object p0

    :cond_6
    :goto_3
    return-object p1
.end method

.method public static final decryptJSonConfig(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Blowfish"

    const-string v1, "i5iyIN7t"

    .line 1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    const-string v1, "MOT_DFT_"

    .line 2
    :cond_1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 3
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v5, "UTF_8"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string/jumbo v4, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 5
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 p1, 0x0

    .line 7
    :try_start_2
    invoke-static {v0, p0}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 8
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 9
    instance-of p1, p0, Ljava/io/IOException;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    throw p0
.end method

.method public static final getFeasibleDeviceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "mcf_config_"

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-static {p0, p1}, Lcom/motorola/camera/shared/Util;->combineDeviceWithRAM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "file"

    .line 3
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    new-array p0, v3, [Ljava/lang/String;

    :cond_0
    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to check "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", err:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "camera2.shared"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static final getRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 73

    const-string v0, "context"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/McfUtil;->REGION:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/shared/McfUtil;->REGION:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v2, "ao"

    const-string v3, "bf"

    const-string v4, "bj"

    const-string v5, "bw"

    const-string v6, "bi"

    const-string v7, "cm"

    const-string v8, "cv"

    const-string v9, "cf"

    const-string v10, "cd"

    const-string v11, "cg"

    const-string v12, "ci"

    const-string v13, "dz"

    const-string v14, "dj"

    const-string v15, "eg"

    const-string v16, "eh"

    const-string v17, "er"

    const-string v18, "et"

    const-string v19, "ga"

    const-string v20, "gq"

    const-string v21, "gh"

    const-string v22, "gm"

    const-string v23, "gn"

    const-string v24, "gw"

    const-string v25, "km"

    const-string v26, "ls"

    const-string v27, "lr"

    const-string v28, "ly"

    const-string v29, "mg"

    const-string v30, "mw"

    const-string v31, "ml"

    const-string v32, "mr"

    const-string v33, "mu"

    const-string v34, "ma"

    const-string v35, "mz"

    const-string v36, "na"

    const-string v37, "ng"

    const-string v38, "ne"

    const-string v39, "re"

    const-string v40, "rw"

    const-string/jumbo v41, "sh"

    const-string/jumbo v42, "st"

    const-string/jumbo v43, "sn"

    const-string v44, "sc"

    const-string/jumbo v45, "sl"

    const-string/jumbo v46, "so"

    const-string/jumbo v47, "ss"

    const-string v48, "sd"

    const-string/jumbo v49, "sz"

    const-string/jumbo v50, "tz"

    const-string/jumbo v51, "tg"

    const-string/jumbo v52, "tn"

    const-string/jumbo v53, "ug"

    const-string/jumbo v54, "yt"

    const-string/jumbo v55, "za"

    const-string/jumbo v56, "zm"

    const-string/jumbo v57, "zw"

    .line 2
    filled-new-array/range {v2 .. v57}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "ag"

    const-string v3, "ar"

    const-string v4, "bb"

    const-string v5, "bo"

    const-string v6, "br"

    const-string v7, "bs"

    const-string v8, "bz"

    const-string v9, "cl"

    const-string v10, "cu"

    const-string v11, "cr"

    const-string v12, "do"

    const-string v13, "gd"

    const-string v14, "gt"

    const-string v15, "gy"

    const-string v16, "hn"

    const-string v17, "ht"

    const-string v18, "jm"

    const-string v19, "kn"

    const-string v20, "lc"

    const-string v21, "mx"

    const-string v22, "ni"

    const-string v23, "pa"

    const-string v24, "pe"

    const-string v25, "py"

    const-string/jumbo v26, "sr"

    const-string/jumbo v27, "sv"

    const-string/jumbo v28, "tt"

    const-string/jumbo v29, "uy"

    const-string/jumbo v30, "vc"

    const-string/jumbo v31, "ve"

    .line 3
    filled-new-array/range {v2 .. v31}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ax"

    const-string v4, "al"

    const-string v5, "ae"

    const-string v6, "ad"

    const-string v7, "at"

    const-string v8, "by"

    const-string v9, "be"

    const-string v10, "ba"

    const-string v11, "bh"

    const-string v12, "bg"

    const-string v13, "ch"

    const-string v14, "co"

    const-string v15, "cy"

    const-string v16, "cz"

    const-string v17, "de"

    const-string v18, "dk"

    const-string v19, "ee"

    const-string v20, "es"

    const-string v21, "fo"

    const-string v22, "fi"

    const-string v23, "fr"

    const-string v24, "gb"

    const-string v25, "gi"

    const-string v26, "gr"

    const-string v27, "gg"

    const-string v28, "hr"

    const-string v29, "hu"

    const-string v30, "ie"

    const-string v31, "is"

    const-string v32, "im"

    const-string v33, "iq"

    const-string v34, "ir"

    const-string v35, "it"

    const-string v36, "il"

    const-string v37, "je"

    const-string v38, "jo"

    const-string v39, "kw"

    const-string v40, "lb"

    const-string v41, "li"

    const-string v42, "lt"

    const-string v43, "lv"

    const-string v44, "mk"

    const-string v45, "mt"

    const-string v46, "md"

    const-string v47, "mc"

    const-string v48, "me"

    const-string v49, "nl"

    const-string v50, "no"

    const-string v51, "nk"

    const-string v52, "om"

    const-string v53, "pl"

    const-string v54, "ps"

    const-string v55, "pt"

    const-string v56, "qa"

    const-string v57, "ro"

    const-string v58, "ru"

    const-string v59, "sa"

    const-string v60, "se"

    const-string/jumbo v61, "sm"

    const-string/jumbo v62, "sy"

    const-string v63, "rs"

    const-string/jumbo v64, "sj"

    const-string v65, "se"

    const-string/jumbo v66, "sk"

    const-string/jumbo v67, "si"

    const-string/jumbo v68, "tr"

    const-string/jumbo v69, "ua"

    const-string/jumbo v70, "uk"

    const-string/jumbo v71, "va"

    const-string/jumbo v72, "ye"

    .line 4
    filled-new-array/range {v3 .. v72}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ai"

    const-string v5, "ca"

    const-string/jumbo v6, "us"

    .line 5
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "au"

    const-string v7, "nc"

    const-string v8, "nz"

    const-string v9, "nf"

    const-string/jumbo v10, "um"

    .line 6
    filled-new-array {v5, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "cn"

    const-string v8, "hk"

    const-string v9, "in"

    const-string v10, "jp"

    const-string v11, "kp"

    const-string v12, "kr"

    const-string v13, "lk"

    const-string v14, "mn"

    const-string v15, "mo"

    const-string v16, "pf"

    const-string/jumbo v17, "tw"

    const-string/jumbo v18, "vn"

    .line 7
    filled-new-array/range {v7 .. v18}, [Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/shared/Util;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "null"

    if-nez v1, :cond_2

    move-object v1, v8

    .line 9
    :cond_2
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "latam"

    if-nez v8, :cond_7

    .line 10
    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {v3, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    invoke-static {v4, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    invoke-static {v5, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    invoke-static {v7, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v6, "asia"

    goto :goto_2

    :cond_5
    :goto_1
    move-object v6, v9

    :cond_6
    :goto_2
    move-object v9, v6

    .line 15
    :cond_7
    sput-object v9, Lcom/motorola/camera/shared/McfUtil;->REGION:Ljava/lang/String;

    return-object v9
.end method

.method public static final minifyJson([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2
    new-instance p0, Ljava/io/StringReader;

    invoke-direct {p0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 4
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseReader(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    instance-of v1, p0, Lcom/google/gson/JsonNull;

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Lcom/google/gson/JsonSyntaxException;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p0, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "element.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 11
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 12
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final parseJsonFile(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return-object v3

    .line 2
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    new-array v0, p1, [B

    .line 5
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 6
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 7
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :catchall_0
    :try_start_4
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-object v3

    .line 9
    :cond_3
    :try_start_5
    invoke-static {v0}, Lcom/motorola/camera/shared/McfUtil;->minifyJson([B)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 10
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 11
    :catchall_2
    :try_start_7
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 12
    :catchall_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0

    :catchall_4
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catchall_5
    move-exception p1

    :goto_2
    move-object v5, v3

    move-object v3, p0

    move-object p0, v5

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_3
    move-object v5, v3

    move-object v3, p0

    move-object p0, v5

    goto :goto_4

    :catchall_6
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .line 13
    :goto_4
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    move-exception p1

    :goto_5
    if-eqz v3, :cond_4

    .line 14
    :try_start_9
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :catchall_8
    :cond_4
    if-eqz p0, :cond_5

    .line 15
    :try_start_a
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 16
    :catchall_9
    :cond_5
    throw p1
.end method

.method public static final readMcfConfig(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static final readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/motorola/camera/shared/McfUtil;->getFeasibleDeviceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/motorola/camera/shared/McfUtil;->readOverrideMcfConfig(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0, v0}, Lcom/motorola/camera/shared/McfUtil;->decryptJSonConfig(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    throw p0
.end method

.method public static final readOverrideMcfConfig(Ljava/io/File;Ljava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mcf_config_"

    .line 2
    invoke-static {v0, p1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/motorola/camera/shared/McfUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/motorola/camera/shared/McfUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_8

    .line 4
    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    array-length v1, v0

    if-ne v1, v2, :cond_7

    .line 6
    :cond_0
    array-length v1, v0

    const-string v4, "files[0].name"

    const-string v5, ""

    const/4 v6, 0x0

    if-ne v1, v3, :cond_1

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v5

    .line 7
    :goto_0
    array-length v7, v0

    if-ne v7, v2, :cond_2

    .line 8
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v1, "files[1].name"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_2
    :try_start_0
    invoke-static {p0, v5}, Lcom/motorola/camera/shared/McfUtil;->parseJsonFile(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 11
    invoke-static {p0, v1}, Lcom/motorola/camera/shared/McfUtil;->parseJsonFile(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lcom/motorola/camera/shared/McfUtil;->consolidateJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "imagers"

    const/4 v3, 0x3

    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_1
    if-ge v6, v4, :cond_5

    .line 16
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 19
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move v6, v3

    :cond_6
    :goto_2
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    const-string v1, "mcf_config_base_nine_sensor"

    goto :goto_4

    :pswitch_2
    const-string v1, "mcf_config_base_eight_sensor"

    goto :goto_4

    :pswitch_3
    const-string v1, "mcf_config_base_seven_sensor"

    goto :goto_4

    :pswitch_4
    const-string v1, "mcf_config_base_six_sensor"

    goto :goto_4

    :pswitch_5
    const-string v1, "mcf_config_base_five_sensor"

    goto :goto_4

    :pswitch_6
    const-string v1, "mcf_config_base_three_sensor"

    goto :goto_4

    :pswitch_7
    const-string v1, "mcf_config_base_two_sensor"

    goto :goto_4

    :goto_3
    const-string v1, "mcf_config_base_four_sensor"

    .line 20
    :goto_4
    :try_start_1
    invoke-static {p0, v1}, Lcom/motorola/camera/shared/McfUtil;->parseJsonFile(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 21
    invoke-static {p0, v0, p1}, Lcom/motorola/camera/shared/McfUtil;->consolidateJsonForDevice(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 22
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string/jumbo p1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    sget-object p1, Lcom/motorola/camera/shared/McfUtil;->TAG:Ljava/lang/String;

    const-string v0, "fail to consolidate and override MCF config"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    throw p0

    .line 25
    :cond_7
    sget-object p0, Lcom/motorola/camera/shared/McfUtil;->TAG:Ljava/lang/String;

    const-string p1, "MCF config override file not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "dir is null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final readTuningMcfConfig(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/motorola/camera/shared/McfUtil;->getFeasibleDeviceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/motorola/camera/tuning/content/TuningProviderHelper;->WHITE_LIST:Lkotlin/collections/EmptySet;

    .line 4
    const-class v0, Lcom/motorola/camera/tuning/content/TuningProviderHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "fileName"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "{}"

    .line 5
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string/jumbo v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/motorola/camera/tuning/content/TuningProviderHelper;->WHITE_LIST:Lkotlin/collections/EmptySet;

    invoke-virtual {v1, p1}, Lkotlin/collections/EmptySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0
.end method
