.class public interface abstract Lkotlinx/serialization/encoding/Encoder;
.super Ljava/lang/Object;
.source "Encoding.kt"


# virtual methods
.method public abstract beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;
.end method

.method public abstract encodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
.end method

.method public abstract encodeInt(I)V
.end method

.method public abstract encodeNull()V
.end method

.method public abstract encodeString(Ljava/lang/String;)V
.end method

.method public abstract getSerializersModule()Landroidx/transition/TransitionPropagation;
.end method
