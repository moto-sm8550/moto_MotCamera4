.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy$DO_NOTHING;
.super Ljava/lang/Object;
.source "TypeAliasExpansionReportStrategy.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DO_NOTHING"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy$DO_NOTHING;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy$DO_NOTHING;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy$DO_NOTHING;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy$DO_NOTHING;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy$DO_NOTHING;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final boundsViolationInSubstitution(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V
    .locals 0

    return-void
.end method

.method public final conflictingProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 0

    const-string/jumbo p0, "typeAlias"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "substitutedArgument"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final recursiveTypeAlias(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;)V
    .locals 0

    const-string/jumbo p0, "typeAlias"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final repeatedAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;)V
    .locals 0

    return-void
.end method
