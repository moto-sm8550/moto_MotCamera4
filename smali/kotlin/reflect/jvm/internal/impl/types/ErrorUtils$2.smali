.class public final Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;
.super Ljava/lang/Object;
.source "ErrorUtils.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeConstructorWithCustomDebugName(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$debugName:Ljava/lang/String;

.field public final synthetic val$errorClass:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor;


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string v1, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2"

    const/4 v5, 0x0

    if-eq p0, v0, :cond_2

    aput-object v4, v3, v5

    goto :goto_2

    :cond_2
    const-string v6, "kotlinTypeRefiner"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "refine"

    const/4 v6, 0x1

    if-eq p0, v6, :cond_6

    if-eq p0, v2, :cond_5

    if-eq p0, v0, :cond_4

    const/4 v4, 0x4

    if-eq p0, v4, :cond_3

    const-string v4, "getParameters"

    aput-object v4, v3, v6

    goto :goto_3

    :cond_3
    aput-object v5, v3, v6

    goto :goto_3

    :cond_4
    aput-object v4, v3, v6

    goto :goto_3

    :cond_5
    const-string v4, "getBuiltIns"

    aput-object v4, v3, v6

    goto :goto_3

    :cond_6
    const-string v4, "getSupertypes"

    aput-object v4, v3, v6

    :goto_3
    if-eq p0, v0, :cond_7

    goto :goto_4

    :cond_7
    aput-object v5, v3, v2

    :goto_4
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->val$errorClass:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->val$debugName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->Instance:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->val$errorClass:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor;

    return-object p0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getSupertypes()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final isDenotable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->val$debugName:Ljava/lang/String;

    return-object p0
.end method
