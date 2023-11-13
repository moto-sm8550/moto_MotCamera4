.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
.super Ljava/lang/Exception;
.source "TypeSubstitutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubstitutionException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Out-projection in in-position"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
