.class public interface abstract Lkotlinx/serialization/encoding/CompositeDecoder;
.super Ljava/lang/Object;
.source "Decoding.kt"


# virtual methods
.method public abstract decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
.end method

.method public abstract decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I
.end method

.method public abstract decodeSequentially()V
.end method

.method public abstract decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
.end method

.method public abstract endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
.end method

.method public abstract getSerializersModule()Landroidx/transition/TransitionPropagation;
.end method
