.class public final Lkotlin/collections/CollectionSystemProperties;
.super Ljava/lang/Object;
.source "CollectionsJVM.kt"


# static fields
.field public static final brittleContainsOptimizationEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "kotlin.collections.convert_arg_to_set_in_removeAll"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lkotlin/collections/CollectionSystemProperties;->brittleContainsOptimizationEnabled:Z

    return-void
.end method
