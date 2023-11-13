.class public final Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt;
.super Ljava/lang/Object;
.source "PluginGeneratedSerialDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPluginGeneratedSerialDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt\n+ 2 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n141#2:135\n141#2:139\n1783#3,3:136\n1783#3,3:140\n*S KotlinDebug\n*F\n+ 1 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt\n*L\n128#1:135\n129#1:139\n128#1:136,3\n129#1:140,3\n*E\n"
.end annotation


# direct methods
.method public static final hashCodeImpl(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    .line 3
    new-instance p1, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$1$1;

    invoke-direct {p1, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$1$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 v1, 0x1

    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$1$1;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$1$1;->next()Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x1f

    .line 5
    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 6
    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$1$1;

    invoke-direct {p1, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$1$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 8
    :goto_2
    invoke-virtual {p1}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$1$1;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$1$1;->next()Ljava/lang/Object;

    move-result-object p0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 10
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p0

    if-nez p0, :cond_2

    move p0, v4

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialKind;->hashCode()I

    move-result p0

    :goto_3
    add-int/2addr v1, p0

    goto :goto_2

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
