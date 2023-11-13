.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptySet"
.end annotation


# static fields
.field public static final ITERABLE:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITERATOR:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->ITERATOR:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->ITERABLE:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;

    return-void
.end method
