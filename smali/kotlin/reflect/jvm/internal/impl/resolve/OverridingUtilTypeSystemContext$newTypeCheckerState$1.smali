.class public final Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext$newTypeCheckerState$1;
.super Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
.source "OverridingUtilTypeSystemContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;->newTypeCheckerState(ZZ)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V
    .locals 6

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext$newTypeCheckerState$1;->this$0:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;-><init>(ZZLkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlinx/serialization/encoding/AbstractDecoder;Landroidx/transition/PathMotion;)V

    return-void
.end method


# virtual methods
.method public final customIsSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 2

    const-string/jumbo v0, "subType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "superType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext$newTypeCheckerState$1;->this$0:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;

    .line 4
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;->customSubtype:Lkotlin/jvm/functions/Function2;

    .line 5
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
