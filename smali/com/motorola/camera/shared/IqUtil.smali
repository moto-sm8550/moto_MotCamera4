.class public final Lcom/motorola/camera/shared/IqUtil;
.super Ljava/lang/Object;
.source "IqUtil.kt"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/shared/IqUtil;

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/IqUtil;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/IqUtil;->TAG:Ljava/lang/String;

    return-void
.end method
