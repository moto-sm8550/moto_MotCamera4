.class public final Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"


# instance fields
.field public final synthetic this$0:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;


# direct methods
.method public constructor <init>(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;->this$0:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    iget-object p0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;->this$0:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    .line 2
    iget-object v2, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/HashMap;

    .line 3
    iget-object v3, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/HashMap;

    .line 4
    iget-object v4, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;

    .line 5
    iget-boolean v5, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    move-object v0, v6

    move-object v1, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;Z)V

    .line 7
    invoke-virtual {v6, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 8
    invoke-virtual {v6}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 9
    iget-object p0, v6, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method
