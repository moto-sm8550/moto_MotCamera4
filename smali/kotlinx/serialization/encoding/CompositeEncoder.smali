.class public interface abstract Lkotlinx/serialization/encoding/CompositeEncoder;
.super Ljava/lang/Object;
.source "Encoding.kt"


# virtual methods
.method public abstract encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V
.end method

.method public abstract encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V
.end method

.method public abstract endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
.end method
