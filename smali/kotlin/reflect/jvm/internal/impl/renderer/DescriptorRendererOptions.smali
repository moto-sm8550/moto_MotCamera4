.class public interface abstract Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions;
.super Ljava/lang/Object;
.source "DescriptorRenderer.kt"


# virtual methods
.method public abstract getDebugMode()Z
.end method

.method public abstract getEnhancedTypes()Z
.end method

.method public abstract getExcludedTypeAnnotationClasses()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setClassifierNamePolicy(Lkotlin/reflect/jvm/internal/impl/renderer/ClassifierNamePolicy;)V
.end method

.method public abstract setDebugMode()V
.end method

.method public abstract setExcludedTypeAnnotationClasses(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setModifiers(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setParameterNameRenderingPolicy(Lkotlin/reflect/jvm/internal/impl/renderer/ParameterNameRenderingPolicy;)V
.end method

.method public abstract setReceiverAfterName()V
.end method

.method public abstract setRenderCompanionObjectName()V
.end method

.method public abstract setStartFromName()V
.end method

.method public abstract setTextFormat()V
.end method

.method public abstract setWithDefinedIn()V
.end method

.method public abstract setWithoutSuperTypes()V
.end method

.method public abstract setWithoutTypeParameters()V
.end method
