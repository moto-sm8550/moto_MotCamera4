.class public final Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;
.super Ljava/lang/Object;
.source "StandardClassIds.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStandardClassIds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StandardClassIds.kt\norg/jetbrains/kotlin/name/StandardClassIds\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n1269#2,2:224\n1283#2,4:226\n1269#2,2:230\n1283#2,4:232\n*S KotlinDebug\n*F\n+ 1 StandardClassIds.kt\norg/jetbrains/kotlin/name/StandardClassIds\n*L\n78#1:224,2\n78#1:226,4\n82#1:230,2\n82#1:232,4\n*E\n"
.end annotation


# static fields
.field public static final Array:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final BASE_ANNOTATION_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_COLLECTIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_COROUTINES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_KOTLIN_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_RANGES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_REFLECT_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;

.field public static final KClass:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final KFunction:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final MutableList:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final MutableMap:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final MutableSet:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final String:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final UByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final UInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final ULong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final UShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final elementTypeByPrimitiveArrayType:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            ">;"
        }
    .end annotation
.end field

.field public static final elementTypeByUnsignedArrayType:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            ">;"
        }
    .end annotation
.end field

.field public static final primitiveArrayTypeByElementType:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            ">;"
        }
    .end annotation
.end field

.field public static final primitiveTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            ">;"
        }
    .end annotation
.end field

.field public static final unsignedArrayTypeByElementType:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            ">;"
        }
    .end annotation
.end field

.field public static final unsignedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "kotlin"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_KOTLIN_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "reflect"

    .line 2
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_REFLECT_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "collections"

    .line 3
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_COLLECTIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v3, "ranges"

    .line 4
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_RANGES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v4, "jvm"

    .line 5
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v4

    const-string v5, "internal"

    .line 6
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v4, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v4, "annotation"

    .line 7
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v4

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_ANNOTATION_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 8
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    invoke-virtual {v0, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    const-string v6, "ir"

    .line 9
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v6, "coroutines"

    .line 10
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v0, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v6

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_COROUTINES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const/4 v7, 0x7

    new-array v8, v7, [Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v2, v8, v0

    const/4 v2, 0x2

    aput-object v3, v8, v2

    const/4 v3, 0x3

    aput-object v4, v8, v3

    const/4 v4, 0x4

    aput-object v1, v8, v4

    const/4 v1, 0x5

    aput-object v5, v8, v1

    const/4 v5, 0x6

    aput-object v6, v8, v5

    .line 11
    invoke-static {v8}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    const-string v6, "Nothing"

    .line 12
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v6, "Unit"

    .line 13
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v6, "Any"

    .line 14
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v6, "Enum"

    .line 15
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v6, "Annotation"

    .line 16
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v6, "Array"

    .line 17
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v6

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->Array:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v6, "Boolean"

    .line 18
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v6

    const-string v8, "Char"

    .line 19
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v8

    const-string v10, "Byte"

    .line 20
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v10

    const-string v11, "Short"

    .line 21
    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v11

    const-string v12, "Int"

    .line 22
    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v12

    const-string v13, "Long"

    .line 23
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v13

    const-string v14, "Float"

    .line 24
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v14

    const-string v15, "Double"

    .line 25
    invoke-static {v15}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v15

    .line 26
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v16

    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 27
    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v16

    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 28
    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v16

    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 29
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v16

    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->ULong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "String"

    .line 30
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v16

    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->String:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "Throwable"

    .line 31
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "Cloneable"

    .line 32
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KProperty"

    .line 33
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KMutableProperty"

    .line 34
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KProperty0"

    .line 35
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KMutableProperty0"

    .line 36
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KProperty1"

    .line 37
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KMutableProperty1"

    .line 38
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KProperty2"

    .line 39
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KMutableProperty2"

    .line 40
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KFunction"

    .line 41
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v16

    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->KFunction:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KClass"

    .line 42
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v16

    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->KClass:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "KCallable"

    .line 43
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "Comparable"

    .line 44
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "Number"

    .line 45
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v16, "Function"

    .line 46
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const/16 v7, 0x8

    new-array v7, v7, [Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    aput-object v6, v7, v9

    aput-object v8, v7, v0

    aput-object v10, v7, v2

    aput-object v11, v7, v3

    aput-object v12, v7, v4

    aput-object v13, v7, v1

    aput-object v14, v7, v5

    const/4 v1, 0x7

    aput-object v15, v7, v1

    .line 47
    invoke-static {v7}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->primitiveTypes:Ljava/util/Set;

    .line 48
    new-instance v5, Ljava/util/LinkedHashMap;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_0

    move v7, v8

    :cond_0
    invoke-direct {v5, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 49
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v10, "id.shortClassName"

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 50
    move-object v11, v7

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 51
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$primitiveArrayId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v10

    invoke-interface {v5, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v5, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->primitiveArrayTypeByElementType:Ljava/util/LinkedHashMap;

    .line 52
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$inverseMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->elementTypeByPrimitiveArrayType:Ljava/util/LinkedHashMap;

    new-array v1, v4, [Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 53
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    aput-object v4, v1, v9

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    aput-object v4, v1, v0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    aput-object v0, v1, v2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->ULong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    aput-object v0, v1, v3

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->unsignedTypes:Ljava/util/Set;

    .line 54
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v2

    if-ge v2, v8, :cond_2

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    invoke-direct {v1, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 56
    move-object v4, v2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 57
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$primitiveArrayId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->unsignedArrayTypeByElementType:Ljava/util/LinkedHashMap;

    .line 58
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$inverseMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->elementTypeByUnsignedArrayType:Ljava/util/LinkedHashMap;

    .line 59
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->primitiveTypes:Ljava/util/Set;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->unsignedTypes:Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->String:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    .line 60
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_COROUTINES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "Continuation"

    .line 61
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 62
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Iterator"

    .line 63
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Iterable"

    .line 64
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Collection"

    .line 65
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "List"

    .line 66
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "ListIterator"

    .line 67
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Set"

    .line 68
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Map"

    .line 69
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    const-string v1, "MutableIterator"

    .line 70
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableIterable"

    .line 71
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableCollection"

    .line 72
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableList"

    .line 73
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->MutableList:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableListIterator"

    .line 74
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableSet"

    .line 75
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->MutableSet:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableMap"

    .line 76
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->MutableMap:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v4, "Entry"

    .line 77
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "MutableEntry"

    .line 78
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Result"

    .line 79
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "IntRange"

    .line 80
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$rangesId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "LongRange"

    .line 81
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$rangesId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "CharRange"

    .line 82
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$rangesId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 83
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_ANNOTATION_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "AnnotationRetention"

    .line 84
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 85
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "AnnotationTarget"

    .line 86
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-void

    .line 88
    :cond_4
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    throw v2

    .line 89
    :cond_5
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
