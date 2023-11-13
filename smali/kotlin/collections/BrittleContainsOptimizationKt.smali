.class public final Lkotlin/collections/BrittleContainsOptimizationKt;
.super Ljava/lang/Object;
.source "BrittleContainsOptimization.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrittleContainsOptimization.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrittleContainsOptimization.kt\nkotlin/collections/BrittleContainsOptimizationKt\n+ 2 CollectionsJVM.kt\nkotlin/collections/CollectionsKt__CollectionsJVMKt\n*L\n1#1,66:1\n123#2:67\n123#2:68\n123#2:69\n123#2:70\n123#2:71\n*S KotlinDebug\n*F\n+ 1 BrittleContainsOptimization.kt\nkotlin/collections/BrittleContainsOptimizationKt\n*L\n16#1:67\n35#1:68\n51#1:69\n59#1:70\n66#1:71\n*E\n"
.end annotation


# direct methods
.method public static final convertToSetForSetOperationWith(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 3
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-ge p1, v1, :cond_1

    check-cast p0, Ljava/util/Collection;

    goto :goto_1

    .line 4
    :cond_1
    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    .line 5
    sget-boolean v0, Lkotlin/collections/CollectionSystemProperties;->brittleContainsOptimizationEnabled:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 7
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, p1

    goto :goto_1

    .line 8
    :cond_4
    sget-boolean p1, Lkotlin/collections/CollectionSystemProperties;->brittleContainsOptimizationEnabled:Z

    if-eqz p1, :cond_5

    .line 9
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method
