.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

.field public zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;

.field public final zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzny;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzny;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzc:I

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;I)V

    return-object v0
.end method


# virtual methods
.method public final zzc(I)[B
    .locals 10

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkn;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;

    xor-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zzi:Ljava/lang/Boolean;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zzg:Ljava/lang/Boolean;

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

    .line 7
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;)V

    .line 8
    iput-object v4, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;

    .line 9
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzny;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzny;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;)V

    .line 11
    new-instance p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;

    .line 12
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 13
    iput-boolean v3, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    .line 14
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 15
    :try_start_1
    new-instance v1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 16
    iget-object v6, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/HashMap;

    .line 17
    iget-object v7, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/HashMap;

    .line 18
    iget-object v8, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;

    .line 19
    iget-boolean v9, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    move-object v4, v1

    move-object v5, v0

    .line 20
    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;Z)V

    .line 21
    invoke-virtual {v1, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 22
    invoke-virtual {v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 23
    iget-object p0, v1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "utf-8"

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

    .line 26
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;)V

    .line 27
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;-><init>()V

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;

    .line 29
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziu;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 30
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;->zzc:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;->zzd:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;

    .line 31
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;

    invoke-direct {v4, v3, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V

    .line 33
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz p0, :cond_2

    .line 34
    invoke-interface {p0, p1, v4}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 35
    :cond_2
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No encoder for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 36
    :catch_1
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 38
    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
