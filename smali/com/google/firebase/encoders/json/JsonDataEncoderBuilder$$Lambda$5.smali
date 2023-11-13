.class public final synthetic Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoder;


# static fields
.field public static final instance:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;->instance:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/google/firebase/encoders/ValueEncoderContext;

    sget-object p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->TIMESTAMP_ENCODER:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p2, p0}, Lcom/google/firebase/encoders/ValueEncoderContext;->add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;

    return-void
.end method
