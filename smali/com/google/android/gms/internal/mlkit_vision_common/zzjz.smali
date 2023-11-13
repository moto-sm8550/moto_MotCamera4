.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzjs;


# instance fields
.field public zza:Lcom/google/firebase/components/Lazy;

.field public final zzb:Lcom/google/firebase/components/Lazy;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;

    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/EncodedDestination;)Lcom/google/android/datatransport/runtime/TransportFactoryImpl;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    .line 5
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v1, "json"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjx;-><init>(Lcom/google/android/datatransport/runtime/TransportFactoryImpl;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;->zza:Lcom/google/firebase/components/Lazy;

    .line 8
    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjy;-><init>(Lcom/google/android/datatransport/runtime/TransportFactoryImpl;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;->zzb:Lcom/google/firebase/components/Lazy;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;Lcom/google/android/gms/internal/mlkit_vision_common/zzju;)Lcom/google/android/datatransport/Event;
    .locals 10

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;->zza()I

    move-result p0

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    xor-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;->zzi:Ljava/lang/Boolean;

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    .line 5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;->zzg:Ljava/lang/Boolean;

    .line 7
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    .line 8
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzil;)V

    .line 9
    iput-object v4, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzha;)V

    .line 12
    new-instance p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v0, Lkotlin/ExceptionsKt;->zza:Lkotlin/ExceptionsKt;

    .line 13
    invoke-virtual {v0, p0}, Lkotlin/ExceptionsKt;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 14
    iput-boolean v3, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    .line 15
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 16
    :try_start_1
    new-instance v1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 17
    iget-object v6, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/HashMap;

    .line 18
    iget-object v7, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/HashMap;

    .line 19
    iget-object v8, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;

    .line 20
    iget-boolean v9, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    move-object v4, v1

    move-object v5, v0

    .line 21
    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;Z)V

    .line 22
    invoke-virtual {v1, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 23
    invoke-virtual {v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 24
    iget-object p0, v1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "utf-8"

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_2

    :cond_1
    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzha;)V

    .line 28
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzal;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzal;-><init>()V

    .line 29
    sget-object v1, Lkotlin/ExceptionsKt;->zza:Lkotlin/ExceptionsKt;

    .line 30
    invoke-virtual {v1, p0}, Lkotlin/ExceptionsKt;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 31
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzal;->zzc:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzal;->zzd:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzal;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzak;

    .line 32
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 33
    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    invoke-direct {v4, v3, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz p0, :cond_2

    .line 35
    invoke-interface {p0, p1, v4}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 36
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

    .line 37
    :catch_1
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 38
    :goto_2
    new-instance p1, Lcom/google/android/datatransport/AutoValue_Event;

    sget-object v0, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    invoke-direct {p1, p0, v0}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    return-object p1

    :catch_2
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 40
    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzju;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;->zza()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;->zza:Lcom/google/firebase/components/Lazy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/Transport;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;Lcom/google/android/gms/internal/mlkit_vision_common/zzju;)Lcom/google/android/datatransport/Event;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;->zzb:Lcom/google/firebase/components/Lazy;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/Transport;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;Lcom/google/android/gms/internal/mlkit_vision_common/zzju;)Lcom/google/android/datatransport/Event;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    return-void
.end method
