.class public final Lkotlin/reflect/jvm/internal/impl/load/java/DeprecationCausedByFunctionNInfo;
.super Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationInfo;
.source "utils.kt"


# instance fields
.field public final target:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/DeprecationCausedByFunctionNInfo;->target:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    return-void
.end method


# virtual methods
.method public final getDeprecationLevel()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic getPropagatesToOverrides()V
    .locals 0

    return-void
.end method
