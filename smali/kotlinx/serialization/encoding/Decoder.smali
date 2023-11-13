.class public interface abstract Lkotlinx/serialization/encoding/Decoder;
.super Ljava/lang/Object;
.source "Decoding.kt"


# virtual methods
.method public abstract beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
.end method

.method public abstract decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
.end method

.method public abstract decodeInt()I
.end method

.method public abstract decodeNotNullMark()Z
.end method

.method public abstract decodeNull()V
.end method

.method public abstract decodeString()Ljava/lang/String;
.end method
