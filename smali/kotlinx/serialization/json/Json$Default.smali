.class public final Lkotlinx/serialization/json/Json$Default;
.super Lkotlinx/serialization/json/Json;
.source "Json.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/json/JsonConfiguration;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonConfiguration;-><init>()V

    .line 2
    sget-object v1, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 3
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Landroidx/transition/TransitionPropagation;)V

    return-void
.end method
