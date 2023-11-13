.class public abstract Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;
.super Landroidx/transition/PathMotion;
.source "KotlinTypeRefiner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract findClassAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)V
.end method

.method public abstract isRefinementNeededForModule(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V
.end method

.method public abstract refineDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)V
.end method

.method public abstract refineSupertypes(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
.end method
