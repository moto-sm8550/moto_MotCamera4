.class public final Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;
.super Ljava/lang/Object;
.source "OperatorNameConventions.kt"


# static fields
.field public static final ASSIGNMENT_OPERATIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final BINARY_OPERATION_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPARE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final COMPONENT_REGEX:Lkotlin/text/Regex;

.field public static final CONTAINS:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final DEC:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final EQUALS:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final GET:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final GET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final HAS_NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final INC:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final INVOKE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final ITERATOR:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final PROVIDE_DELEGATE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final RANGE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final SET:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final SET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final SIMPLE_UNARY_OPERATION_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const-string v0, "getValue"

    .line 1
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v1, "setValue"

    .line 2
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v2, "provideDelegate"

    .line 3
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->PROVIDE_DELEGATE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "equals"

    .line 4
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->EQUALS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "hashCode"

    .line 5
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "compareTo"

    .line 6
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPARE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "contains"

    .line 7
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->CONTAINS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "invoke"

    .line 8
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INVOKE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "iterator"

    .line 9
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ITERATOR:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "get"

    .line 10
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v3, "set"

    .line 11
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "next"

    .line 12
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "hasNext"

    .line 13
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->HAS_NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v3, "toString"

    .line 14
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 15
    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "component\\d+"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPONENT_REGEX:Lkotlin/text/Regex;

    const-string v3, "and"

    .line 16
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "or"

    .line 17
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v3, "xor"

    .line 18
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "inv"

    .line 19
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v3, "shl"

    .line 20
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v3, "shr"

    .line 21
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v3, "ushr"

    .line 22
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "inc"

    .line 23
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v4, "dec"

    .line 24
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->DEC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v5, "plus"

    .line 25
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    const-string v6, "minus"

    .line 26
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    const-string v7, "not"

    .line 27
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    const-string/jumbo v8, "unaryMinus"

    .line 28
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v8

    const-string/jumbo v9, "unaryPlus"

    .line 29
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v9

    const-string/jumbo v10, "times"

    .line 30
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v10

    const-string v11, "div"

    .line 31
    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v11

    const-string v12, "mod"

    .line 32
    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v12

    const-string v13, "rem"

    .line 33
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v13

    const-string v14, "rangeTo"

    .line 34
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v14

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v15, "timesAssign"

    .line 35
    invoke-static {v15}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v15

    const-string v16, "divAssign"

    .line 36
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v16

    const-string v17, "modAssign"

    .line 37
    invoke-static/range {v17 .. v17}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v17

    const-string v18, "remAssign"

    .line 38
    invoke-static/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v18

    const-string v19, "plusAssign"

    .line 39
    invoke-static/range {v19 .. v19}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v19

    const-string v20, "minusAssign"

    .line 40
    invoke-static/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v20

    move-object/from16 v21, v2

    const/4 v2, 0x5

    move-object/from16 v22, v1

    new-array v1, v2, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    const/16 v23, 0x0

    aput-object v3, v1, v23

    const/4 v3, 0x1

    aput-object v4, v1, v3

    const/4 v4, 0x2

    aput-object v9, v1, v4

    const/4 v2, 0x3

    aput-object v8, v1, v2

    const/16 v24, 0x4

    aput-object v7, v1, v24

    .line 41
    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    new-array v1, v2, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    aput-object v9, v1, v23

    aput-object v8, v1, v3

    aput-object v7, v1, v4

    .line 42
    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SIMPLE_UNARY_OPERATION_NAMES:Ljava/util/Set;

    const/4 v1, 0x7

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    aput-object v10, v1, v23

    aput-object v5, v1, v3

    aput-object v6, v1, v4

    aput-object v11, v1, v2

    aput-object v12, v1, v24

    const/4 v5, 0x5

    aput-object v13, v1, v5

    const/4 v6, 0x6

    aput-object v14, v1, v6

    .line 43
    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->BINARY_OPERATION_NAMES:Ljava/util/Set;

    new-array v1, v6, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    aput-object v15, v1, v23

    aput-object v16, v1, v3

    aput-object v17, v1, v4

    aput-object v18, v1, v2

    aput-object v19, v1, v24

    aput-object v20, v1, v5

    .line 44
    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ASSIGNMENT_OPERATIONS:Ljava/util/Set;

    new-array v1, v2, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    aput-object v0, v1, v23

    aput-object v22, v1, v3

    aput-object v21, v1, v4

    .line 45
    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method
