.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializerKt;
.super Ljava/lang/Object;
.source "TypeDeserializer.kt"


# static fields
.field public static final EXPERIMENTAL_CONTINUATION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "kotlin.coroutines.experimental.Continuation"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializerKt;->EXPERIMENTAL_CONTINUATION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-void
.end method
