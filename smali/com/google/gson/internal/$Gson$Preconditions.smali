.class public final Lcom/google/gson/internal/$Gson$Preconditions;
.super Ljava/lang/Object;
.source "$Gson$Preconditions.java"


# direct methods
.method public static checkArgument(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static final throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    not-int p0, p0

    and-int/2addr p0, p1

    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge p1, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    .line 2
    move-object v2, p2

    check-cast v2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 3
    iget-object v2, v2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    .line 4
    aget-object p1, v2, p1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    move p1, v1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Lkotlinx/serialization/MissingFieldException;

    check-cast p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 7
    iget-object p1, p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->serialName:Ljava/lang/String;

    .line 8
    invoke-direct {p0, v0, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/util/List;Ljava/lang/String;)V

    throw p0
.end method
