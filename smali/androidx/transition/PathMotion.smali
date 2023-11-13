.class public abstract Landroidx/transition/PathMotion;
.super Ljava/lang/Object;
.source "PathMotion.java"

# interfaces
.implements Lkotlinx/serialization/encoding/Encoder;
.implements Lkotlinx/serialization/encoding/CompositeEncoder;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addFakeOverride(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V
.end method

.method public abstract encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
.end method

.method public abstract encodeInt(I)V
.end method

.method public encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/transition/PathMotion;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p3}, Landroidx/transition/PathMotion;->encodeInt(I)V

    return-void
.end method

.method public encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/transition/PathMotion;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 2
    invoke-virtual {p0, p3, p4}, Landroidx/transition/PathMotion;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
.end method

.method public abstract encodeString(Ljava/lang/String;)V
.end method

.method public encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroidx/transition/PathMotion;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p3}, Landroidx/transition/PathMotion;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public abstract getPath(FFFF)Landroid/graphics/Path;
.end method

.method public abstract inheritanceConflict(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V
.end method

.method public abstract onClosed(Ljava/lang/String;)V
.end method

.method public abstract onCollisionCheck(Lcom/motorola/camera/ui/widgets/gl/RectWrapper;)Z
.end method

.method public abstract onDisconnected(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onFindViewById(I)Landroid/view/View;
.end method

.method public abstract onFontRetrievalFailed(I)V
.end method

.method public abstract onFontRetrieved(Landroid/graphics/Typeface;Z)V
.end method

.method public abstract onHasView()Z
.end method

.method public abstract onOpened(Ljava/lang/String;J)V
.end method

.method public abstract refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
.end method

.method public setOverriddenDescriptors(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Ljava/util/Collection;)V
    .locals 0

    const-string p0, "member"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->setOverriddenDescriptors(Ljava/util/Collection;)V

    return-void
.end method
